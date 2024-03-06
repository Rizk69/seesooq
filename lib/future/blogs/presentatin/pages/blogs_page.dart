import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/blogs/presentatin/cubit/blogs_cubit.dart';
import 'package:opensooq/future/blogs/presentatin/cubit/blogs_state.dart';

class BlogsPage extends StatefulWidget {
  const BlogsPage({super.key});

  @override
  State<BlogsPage> createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => BlogsCubit()..getBlogs(),
          child: BlocBuilder<BlogsCubit, BlogsState>(builder: (context, state) {
            return state.status == BlogsStatus.loading
                ? const Center(child: CircularProgressIndicator.adaptive())
                : ListView.separated(
                    itemBuilder: (context, index) {
                      var item = state.allBlogs?.blogs?.blogsData?[index];
                      return ListTile(
                        title: TranslateText(
                          text: item?.title ?? '',
                          fontWeight: FontWeight.bold,
                          styleText: StyleText.h5,
                        ),
                        subtitle: TranslateText(
                          text: item?.description ?? '',
                          fontWeight: FontWeight.normal,
                          maxLines: 5,
                          textAlign: TextAlign.start,
                          styleText: StyleText.h6,
                        ),
                        onTap: () {
                          context.goNamed(Routes.blogRoute, extra: item?.id);
                        },
                      );
                    },
                    separatorBuilder: (context, index) => Gap(10),
                    itemCount: 10,
                  );
          }),
        ),
      ),
    );
  }
}
