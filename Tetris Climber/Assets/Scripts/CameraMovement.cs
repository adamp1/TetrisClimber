﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraMovement : MonoBehaviour {

    GameObject Player;
    bool setCameraToPlayer = true;

    public float CameraY = 7;
    public float CameraZ = -15;
    public float CameraX = 7.5f;

    public float CameraSpeed = 4;
    public float StartPosCameraY = 40;
    
    

    // Use this for initialization
    void Start () {
        Player = GameObject.Find("Player");
        transform.position = new Vector3(CameraX , Player.transform.position.y + CameraY + StartPosCameraY, CameraY);
    }
	
	// Update is called once per frame
	void Update () {
        if (Player != null)
        {
            float interpolation = CameraSpeed * Time.deltaTime;


            Vector3 PlayerPos = Player.transform.position;

            Vector3 CameraPos = transform.position;

            /*  if(PlayerPos.y >= CameraPos.y)
              {
                  setCameraToPlayer = true;
              }  */

            if (setCameraToPlayer)
            {
                //KAMERA Y
                CameraPos.y = Mathf.Lerp(transform.position.y, Player.transform.position.y + CameraY, interpolation);               
                CameraPos.z = CameraZ;


                //KAMERA X
                if (Player.transform.position.x < 10.5f && Player.transform.position.x > 4.5f)
                {
                    CameraPos.x = Mathf.Lerp(transform.position.x, 7.5f, interpolation);
                }
                else if (Player.transform.position.x > 10.5f)
                {
                    CameraPos.x = Mathf.Lerp(transform.position.x, Player.transform.position.x - 3f, interpolation);
                }
                else if (Player.transform.position.x < 4.5f)
                {
                    CameraPos.x = Mathf.Lerp(transform.position.x, Player.transform.position.x + 3f, interpolation);
                }                

                //CameraPos = new Vector3(CameraX, PlayerPos.y + CameraY, CameraZ);
                transform.position = CameraPos;
            }
        }
	}
}
