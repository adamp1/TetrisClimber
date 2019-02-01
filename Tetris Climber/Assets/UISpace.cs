using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UISpace : MonoBehaviour
{
    Game game;
    Canvas canvas;
    // Start is called before the first frame update
    void Start()
    {
        game = GameObject.FindObjectOfType<Game>();
        canvas = GetComponent<Canvas>();
    }

    // Update is called once per frame
    void Update()
    {
        if (game.GameOverUI.active || game.GameOver2UI.active){
            canvas.renderMode = RenderMode.ScreenSpaceOverlay;
        }
    }
}
