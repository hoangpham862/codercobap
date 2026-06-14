import 'dart:typed_data';
import 'package:features/features.dart';
import 'package:features/list_app_control/bloc/list_app_control_bloc.dart';
import 'package:features/list_app_control/bloc/list_app_control_event.dart';
import 'package:features/list_app_control/bloc/list_app_control_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';

class ListAppControl extends StatefulWidget {
  const ListAppControl({super.key});

  @override
  State<ListAppControl> createState() => _ListAppControlState();
}

class _ListAppControlState extends State<ListAppControl> {
  late ListAppControlBloc _bloc;
  bool _isNavigating = false;
  @override
  void initState() {
    super.initState();
    _bloc = ListAppControlBloc()..getAllApp();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Ứng dụng kiểm soát'),
        backgroundColor: ThemeProvider.themeOf(context)
            .data
            .extension<AppColorTheme>()
            ?.neutralColor
            .neutralColor9,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tìm kiếm ứng dụng...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              ),
              onChanged: (value) {
                _bloc.add(AppFilterEvent(query: value));
              },
            ),
          ),
          //
          buildListAppItems(context)
        ],
      ),
    );
  }

  ///
  Widget buildListAppItems(BuildContext context) {
    var themeProvider = ThemeProvider.themeOf(context).data;
    return Expanded(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(
                color: themeProvider
                        .extension<AppColorTheme>()
                        ?.neutralColor
                        .neutralColor9 ??
                    Colors.transparent),
            boxShadow: [
              BoxShadow(
                  color: themeProvider
                          .extension<AppColorTheme>()
                          ?.neutralColor
                          ?.neutralColor8
                          .withValues(alpha: 0.1) ??
                      Colors.transparent,
                  blurRadius: 5,
                  spreadRadius: 1)
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: BlocBuilder<ListAppControlBloc, BaseState>(
            bloc: _bloc,
            builder: (context, state) {
              final listApp = state is LoadedState<AppFilterEvent>
                  ? (state.data as List<InstalledApplicationInfo?>)
                  : <InstalledApplicationInfo?>[];
              return ListView.builder(
                  itemCount: listApp.length,
                  itemBuilder: (context, index) {
                    return buildItems(context, listApp[index]);
                  });
            },
          )),
    );
  }

  //
  Widget buildItems(BuildContext context, InstalledApplicationInfo? item) {
    return InkWell(
      onTap: () async {
        if (_isNavigating) return;
        _isNavigating = true;
        try {
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SettingLimitTimeScreen(
                appName: item?.appName ?? '',
                packageName: item?.packageName ?? '',
              ),
            ),
          );
        } finally {
          _isNavigating = false;
        }
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: const BoxDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Icon App
            Row(
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: AppIconWidget(
                    packageName: item?.packageName ?? '',
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                //
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item?.appName ?? '',
                        style: ThemeProvider.themeOf(context)
                            .data
                            .extension<AppTextStyleTheme>()
                            ?.neu1Bold18),
                    Text(
                        item?.isSystemApp == "true" ? 'Hệ thống' : 'Người dùng',
                        style: ThemeProvider.themeOf(context)
                            .data
                            .extension<AppTextStyleTheme>()
                            ?.neu1Medi14),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AppIconWidget extends StatefulWidget {
  final String packageName;
  const AppIconWidget({super.key, required this.packageName});

  @override
  State<AppIconWidget> createState() => _AppIconWidgetState();
}

class _AppIconWidgetState extends State<AppIconWidget> {
  Uint8List? _iconBytes;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loadIcon();
  }

  @override
  void didUpdateWidget(AppIconWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.packageName != widget.packageName) {
      _loadIcon();
    }
  }

  void _loadIcon() {
    if (widget.packageName.isEmpty) return;
    
    final cached = locator<AppRepository>().getIconForPackage(widget.packageName);
    if (cached != null) {
      setState(() {
        _iconBytes = cached;
        _loading = false;
      });
      return;
    }

    setState(() {
      _iconBytes = null;
      _loading = true;
    });

    locator<AppRepository>().getIcon(widget.packageName).then((bytes) {
      if (mounted) {
        setState(() {
          _iconBytes = bytes;
          _loading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_iconBytes != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.memory(
          _iconBytes!,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => _buildFallbackIcon(),
        ),
      );
    }

    if (_loading) {
      return const Padding(
        padding: EdgeInsets.all(12.0),
        child: CircularProgressIndicator(strokeWidth: 2),
      );
    }

    return _buildFallbackIcon();
  }

  Widget _buildFallbackIcon() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Icon(
        Icons.android,
        color: Colors.white,
      ),
    );
  }
}
