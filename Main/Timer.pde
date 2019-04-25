class Timer{

    float time;
    Timer(){
        time = millis()*1000;
    }

    float getTime(){
        return time;
    }

    void updateTime(){
        time = (millis()*1000) - time;
    }
}