smileFace smf = new smileFace (60, 250, 50);
smileFace smf1 = new smileFace (170, 250, 50);
smileFace smf2 = new smileFace (280, 250, 50);



ArrayList <smileFace> smile = new ArrayList <smileFace> (); //smileFace is data type || smile is the name of the list


void setup() {

  size (1000, 1000);
//TEACH STUDENTS THESE CODE LINES AT FIRST (for a few weeks)
  //add function should be in the void setup () {}; smileFace (10, 10, 10) is the constructor with the parameters
  //smile.add(new smileFace (60, 200, 50)); //0 - smile face
  //smile.add(new smileFace (160, 200, 50));//1 - smile face
  //smile.add(new smileFace (260, 200, 50));//2 - smile face
  //smile.add(new smileFace (360, 200, 50));//3 - smile face
  //smile.add(new smileFace (460, 200, 50)); //0 - smile face
  //smile.add(new smileFace (560, 200, 50));//1 - smile face
  //smile.add(new smileFace (660, 200, 50));//2 - smile face
  //smile.add(new smileFace (760, 200, 50));//3 - smile face

  //smile.add(new smileFace (60, 200, 50)); //0 - smile face
  //smile.add(new smileFace (60, 300, 50));//1 - smile face
  //smile.add(new smileFace (60, 400, 50));//2 - smile face
  //smile.add(new smileFace (60, 500, 50));//3 - smile face
  //smile.add(new smileFace (60, 600, 50)); //0 - smile face
  //smile.add(new smileFace (60, 700, 50));//1 - smile face
  //smile.add(new smileFace (60, 800, 50));//2 - smile face
  //smile.add(new smileFace (60, 900, 50));//3 - smile face
  
  //END

  float faceSize = 30; 
  for ( float x = faceSize; x < width; x += faceSize*2) {
    for ( float y = faceSize; y < height; y += faceSize*2) { //Không dạy hs dòng này cho đến khi hs hiểu được for loop
      smile.add(new smileFace (x, y, faceSize)); //smileFace is the name of the class || smile is the name of the list
    }
  }
}

void draw () {


  //smf.draw();
  //smf.update();


  //smf1.draw();
  //smf1.update();

  //smf2.draw();
  //smf2.update();


  for (smileFace s : smile) {
    s.draw ();
    s.update();
  }
}
