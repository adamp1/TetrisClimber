using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraMovement : MonoBehaviour {

    GameObject Player;
    bool setCameraToPlayer = true;

	// Use this for initialization
	void Start () {
        Player = GameObject.Find("Player");
	}
	
	// Update is called once per frame
	void Update () {
        Vector3 PlayerPos = Player.transform.position;
        Vector3 CameraPos = transform.position;

      /*  if(PlayerPos.y >= CameraPos.y)
        {
            setCameraToPlayer = true;
        }  */

        if(setCameraToPlayer)
        {

            CameraPos = new Vector3(CameraPos.x, PlayerPos.y + 6 ,CameraPos.z);
            transform.position = CameraPos;
        }
	}
}
