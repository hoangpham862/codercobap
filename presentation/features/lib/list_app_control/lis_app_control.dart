import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'app_helper_service.dart';

class ListAppControl extends StatefulWidget {
  const ListAppControl({super.key});

  @override
  State<ListAppControl> createState() => _ListAppControlState();
}

class _ListAppControlState extends State<ListAppControl> {
  List<AppInfo> _apps = [];
  bool _isLoading = true;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _loadApps();
  }

  Future<void> _loadApps() async {
    setState(() {
      _isLoading = true;
    });
    final apps = await AppHelperService.getInstalledApps();
    // Sắp xếp ứng dụng theo bảng chữ cái
    apps.sort((a, b) => a.appName.toLowerCase().compareTo(b.appName.toLowerCase()));
    if (mounted) {
      setState(() {
        _apps = apps;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final filteredApps = _apps.where((app) {
      final nameMatches = app.appName.toLowerCase().contains(_searchQuery.toLowerCase());
      final packageMatches = app.packageName.toLowerCase().contains(_searchQuery.toLowerCase());
      return nameMatches || packageMatches;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ứng dụng kiểm soát'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadApps,
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
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : filteredApps.isEmpty
                    ? const Center(child: Text('Không tìm thấy ứng dụng nào'))
                    : ListView.builder(
                        padding: const EdgeInsets.only(bottom: 24),
                        itemCount: filteredApps.length,
                        itemBuilder: (context, index) {
                          final app = filteredApps[index];
                          return ListTile(
                            leading: AppIconWidget(packageName: app.packageName),
                            title: Text(
                              app.appName,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              app.packageName,
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            trailing: app.isSystemApp
                                ? Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.orange.shade100,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Text(
                                      'Hệ thống',
                                      style: TextStyle(
                                        color: Colors.orange.shade800,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                : null,
                          );
                        },
                      ),
          ),
        ],
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
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    _loadIcon();
  }

  @override
  void didUpdateWidget(covariant AppIconWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.packageName != widget.packageName) {
      _loadIcon();
    }
  }

  Future<void> _loadIcon() async {
    setState(() {
      _loaded = false;
      _iconBytes = null;
    });
    final bytes = await AppHelperService.getAppIcon(widget.packageName);
    if (mounted) {
      setState(() {
        _iconBytes = bytes;
        _loaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_loaded) {
      return const SizedBox(
        width: 40,
        height: 40,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    if (_iconBytes == null) {
      return const Icon(Icons.android, size: 40, color: Colors.green);
    }

    return Image.memory(
      _iconBytes!,
      width: 40,
      height: 40,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.android, size: 40, color: Colors.green);
      },
    );
  }
}

