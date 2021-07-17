# Box Shadow in perfect way


        Container(
            height: double.infinity,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 2.0,
                    offset: Offset(
                    0.8, 0.0
                    ),
                    spreadRadius: 2.0
                )
                ]
            ),
        );
