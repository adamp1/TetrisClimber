using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StoryEinblendung : MonoBehaviour
{

    public Game game;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    public void StoryStart(){
        //ganz viel zeug
        print("was started");


        //starte Game.Restart()
        //GameObject.FindObjectOfType<Game>().Restart();
        game.Restart();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
