using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StoryEinblendung : MonoBehaviour
{

    public Game game;
    public Text uistory;
    public string textstory;
    public string currenttxt;
    public float chartime = 0.1f;
    public GameObject[] menu;
    public Image darkstory;

    Color olddark;

    // Start is called before the first frame update
    void Start()
    {
        olddark = darkstory.color;
        darkstory.color = new Color(0, 0, 0, 0);
    }

    IEnumerator StoryProgress()
    {
        int length = 0;
        currenttxt = "PRESS ANY BUTTON TO CONTINUE\n\n\n";
        length += currenttxt.Length;
        int i = 0;

        //skippable = true;


        while (currenttxt.Length - length != textstory.Length || Input.anyKeyDown)
        {
            currenttxt += textstory[i];
            i++;
            uistory.text = currenttxt;
            yield return new WaitForSeconds(chartime);
            skippable = true;
        }
        print("AAAAAAAAAAAAA");

        //game.Restart();
    }

    bool skippable;

    public void StoryStart()
    {
        //ganz viel zeug
        print("was started");
        uistory.gameObject.SetActive(true);
        textstory = uistory.text;
        uistory.text = "";

        foreach (GameObject g in menu)
        {
            g.SetActive(false);
        }


        darkstory.color = olddark;

        StartCoroutine(StoryProgress());

        //deactivate main menu

        //starte Game.Restart()
        //GameObject.FindObjectOfType<Game>().Restart();
        //game.Restart();


    }

    // Update is called once per frame
    void Update()
    {
        if (skippable)
        {
            if (Input.anyKeyDown)
            {
                game.Restart();
            }
        }
    }
}
