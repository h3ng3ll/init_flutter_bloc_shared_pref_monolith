import 'dart:io';
import 'dart:typed_data';

import '../../bloc/profile_bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Uint8List? image;

  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    final profileBloc = context.read<ProfileBloc>().state;
    _usernameController.text = profileBloc.profile.username;
    image = profileBloc.profile.avatar;

    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  Future<void> onTapUserAvatar() async {
    // final ImageSource? source = await showModalBottomSheet(
    //   context: context,
    //   backgroundColor: Colors.transparent,
    //   builder: (context) => PickImgModalDialog(),
    // );
    // if (source == null || !mounted) return;
    // File? file;
    // if (source == ImageSource.gallery) {
    //   file = await PermissionRequester.instance.onPickGallery(
    //     context,
    //   );
    // } else if (source == ImageSource.camera) {
    //   file = await PermissionRequester.instance.onPickCamera(
    //     context,
    //   );
    // }
    // if (file != null) {
    //   image = file.readAsBytesSync();
    //   setState(() {});
    // }
  }

  void onTapSave() {
    // context.read<ProfileBloc>().add(
    //   ProfileEvent.save(
    //     avatar: image,
    //     username: _usernameController.text,
    //   ),
    // );
    // final soundStatus = context.read<SettingsBloc>().state.settings.soundStatus;
    //
    // if (soundStatus) {
    //   AudioService.instance.playSuccess();
    // }
  }

  @override
  Widget build(BuildContext context) {
    final lo = AppLocalizations.of(context)!;
    final profileBloc = context.watch<ProfileBloc>();
    return Scaffold(
      body: Placeholder()
    );
  }
}
