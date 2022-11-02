import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_constant/colors.dart';


class ToolbarBody extends StatefulWidget {
  const ToolbarBody({Key? key,required this.isOnTop}) : super(key: key);
  final bool isOnTop;

  @override
  _ToolbarBodyState createState() => _ToolbarBodyState();
}

class _ToolbarBodyState extends State<ToolbarBody> {
  bool _showSearch = false;
  @override
  Widget build(BuildContext context) {
   return Container(
     color: blueGray,
     child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 20),
           child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 58,
                child: Stack(
                  children: [
                    // if(widget.isOnTop)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          AnimatedOpacity(

                            opacity: widget.isOnTop ? 1: 0,
                            duration: const Duration(milliseconds: 300),
                            child: GestureDetector(
                              onTap: (){},
                              child: SizedBox(
                                width: 48,
                                height: 48,
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                      color: searchInput,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1,
                                          color: Colors.white.withOpacity(.02))),
                                  child:const Icon(
                                    Icons.menu,
                                    size: 20,
                                    color: Colors.white,
                                  )
                                ),
                              ),
                            ),
                          ),
                          if ((!_showSearch )  )
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: Text(
                                    "Find Your Doctor",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(fontSize: 21),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 78,
                            )
                        ],
                      ),
                    ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.bounceOut,
                          width: _showSearch == true
                              ? MediaQuery.of(context).size.width - (widget.isOnTop ? 95 : 0)
                              : 48,
                          height: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: searchInput,
                              // gradient: AppGradient.gradient[1],
                              border: Border.all(
                                  width: 1, color: Colors.white.withOpacity(.02))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (_showSearch)
                                Container(
                                  height: double.infinity,
                                  width: 10,
                                ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showSearch = !_showSearch ;

                                  });
                                },
                                child: const Icon(
                                  Icons.search,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              if (_showSearch)
                                Container(
                                  height: double.infinity,
                                  width: 10,
                                ),
                              if (_showSearch)
                                Expanded(
                                  child: TextFormField(
                                    // controller: widget.searchController,
                                    decoration: InputDecoration(
                                        hintText: "Find Your Doctor"),
                                    keyboardType: TextInputType.text,
                                  ),
                                  flex: 1,
                                )
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
         ),
         Container(width: MediaQuery.of(context).size.width,
         height: 1,
         color:  Colors.white.withOpacity(.05)  ,)
       ],
     ),
   );  }
}
