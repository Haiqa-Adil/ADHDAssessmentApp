import 'package:flutter/material.dart';

class Journal extends StatelessWidget {
  Journal({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int height = size.height ~/30;

    int  space = 0;
    int length = 0;
    return Scaffold(
    //  resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Journal'),
        backgroundColor: const Color(0xff28203e),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.05,
            horizontal: size.width * 0.03
          ),
          child: Column(
            children: [
              TextFormField(
               controller: _controller,
                scrollPhysics: const ScrollPhysics(),
                onChanged: (val){
                  if(val.isNotEmpty && val[val.length - 1] == ' '){
                    if(length > val.length) {
                      space--;
                    } else if(length < val.length) {
                      space++;
                    }
                    length = val.length;
                    if(space > 249) {
                      _controller.text = val;
                    }
                  }
                },
                minLines: height,
                maxLines: height,
                keyboardType: TextInputType.multiline,
                style: const TextStyle(
                  fontSize: 18
                ),
                decoration: InputDecoration(
                  hintText: 'Write Something',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xff28203e)
                    )
                  )
                ),
              )
            ],
          ),

        ),
      ),
    );

  }
}
