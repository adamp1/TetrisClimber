using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraMovement : MonoBehaviour {

    GameObject Player;
    bool setCameraToPlayer = true;

    public float CameraY = 7;
    public float CameraZ = -15;


    // Use this for initialization
    void Start () {
        Player = GameObject.Find("Player");
        
    }
	
	// Update is called once per frame
	void Update () {
        if (Player != null)
        {



            Vector3 PlayerPos = Player.transform.position;

            Vector3 CameraPos = transform.position;

            /*  if(PlayerPos.y >= CameraPos.y)
              {
                  setCameraToPlayer = true;
              }  */

            if (setCameraToPlayer)
            {

                CameraPos = new Vector3(transform.position.x, PlayerPos.y + CameraY, CameraZ);
                transform.position = CameraPos;
            }
        }
	}
}
