import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:opensooq/future/caht/cubit/chat_cubit.dart';
import 'dart:io';

import '../../setting1/edit_profile/presentation/widgets/profile_photo.dart';

class ChatMassagePage extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();
  final TextEditingController _textController = TextEditingController();
  ChatMassagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
            child: BlocBuilder<ChatCubit, ChatState>(
              builder: (context, state) {
                final ChatCubit chatCubit = BlocProvider.of<ChatCubit>(context);

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeaderNewChatCard(
                        img: '', name: 'آدم يوسف', onPressed: () {}),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          if (state is ChatMessageSentState) {
                            return ListTile(
                              title: const Text('User'),
                              subtitle: Text(state.message),
                            );
                          } else if (state is ChatPhotoSentState) {
                            return ListTile(
                              title: const Text('User'),
                              leading: Image.file(state.photo),
                            );
                          }
                          return Container();
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                      ),
                      child: _buildTextComposer(context, chatCubit),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextComposer(BuildContext context, ChatCubit chatCubit) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                  controller: _textController,
                  onSubmitted: (String message) {
                    chatCubit.sendMessage(message);
                    _textController.clear();
                  },
                  decoration: const InputDecoration.collapsed(
                      hintText: "مراسلة", border: InputBorder.none)),
            ),
            IconButton(
              icon: const Icon(Icons.file_present_rounded),
              onPressed: () async {
                final XFile? pickedFile =
                    await _picker.pickImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  chatCubit.sendPhoto(File(pickedFile.path));
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                chatCubit.sendMessage(_textController.text);
                _textController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
