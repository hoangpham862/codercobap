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
    Uint8List? icon =
        locator<AppRepository>().getIconForPackage(item?.packageName ?? '');
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
        decoration: BoxDecoration(
            // color: ThemeProvider.themeOf(context)
            //     .data
            //     .extension<AppColorTheme>()
            //     ?.neutralColor
            //     ?.neutralColor7,
            // borderRadius: BorderRadius.circular(12),
            // border: Border.fromBorderSide(
            //   BorderSide(
            //     color: ThemeProvider.themeOf(context)
            //             .data
            //             .extension<AppColorTheme>()
            //             ?.neutralColor
            //             .neutralColor9 ??
            //         Colors.transparent,
            //     width: 1,
            //   ),
            // ),
            ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Icon App
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: icon != null
                      ? Image.memory(
                          icon,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey,
                              child: const Icon(
                                Icons.error,
                                color: Colors.white,
                              ),
                            );
                          },
                        )
                      : null,
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

            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {},
              child: CustomSwitcherButton(
                value: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
