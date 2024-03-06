import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/blogs/presentatin/cubit/blogs_cubit.dart';
import 'package:opensooq/future/blogs/presentatin/cubit/blogs_state.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key, required this.idBlog});

  final int idBlog;

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Blog Page'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.goNamed(Routes.blogsRoute);
            },
          ),
        ),
        body: BlocBuilder<BlogsCubit, BlogsState>(
            buildWhen: (previous, current) => previous.onBlogStatus != current.onBlogStatus,
            bloc: BlogsCubit()..getDescriptionBlog(widget.idBlog),
            builder: (context, state) {
              return state.onBlogStatus == OneBlogsStatus.loading
                  ? const Center(
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : Column(
                      children: [
                        Text(state.blog?.blog?.title ?? ''),
                        Text(state.blog?.blog?.description ?? ''),
                      ],
                    );
            }),
      ),
    );
  }
}
