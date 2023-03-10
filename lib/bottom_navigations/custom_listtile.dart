import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final bool? change;
  final String? title;
  final String? subtitle;
  final IconData? leading;
  final IconData? trailing;
  const CustomListTile({
    super.key,
    this.change,
    this.title,
    this.subtitle,
    this.leading,
    this.trailing,
  });

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool _ontap = true;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        widget.leading,
        size: 30,
      ),
      title: Text(widget.title.toString()),
      subtitle: Text(widget.subtitle.toString()),
      trailing: widget.trailing != null
          ? IconButton(
              icon: Icon(
                _ontap ? Icons.delete : Icons.delete_forever,
                color: Theme.of(context).primaryColorDark,
              ),
              onPressed: () {
                setState(() {
                  _ontap = !_ontap;
                });
              },
            )
          : null,
    );
  }
}
