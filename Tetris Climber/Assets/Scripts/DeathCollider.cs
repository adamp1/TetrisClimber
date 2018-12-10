﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathCollider : MonoBehaviour {

    public GameObject GameOverUI;
    public float speed;
    float time;
    public float increaseAfterTime = 20;
    public float speedIncrease = 0.1f;

	// Update is called once per frame
	void FixedUpdate ()
    {
        changeTime();
        moveCollider();
        
	}

    void changeTime()
    {
        time += 1 * Time.deltaTime;

        if (time > increaseAfterTime)
        {
            speed += speedIncrease;
            time = 0;
        }
    }

    void moveCollider ()
    {
        Vector3 pos = transform.position;
        pos.y = pos.y + 1 * speed * Time.deltaTime;
        transform.position = pos;
    }

    void OnTriggerEnter (Collider other)
    {
        if (other.gameObject.tag == "DeathTrigger")
        {
            GameObject Player = GameObject.Find("Player");
            Destroy(Player);
            GameOverUI.SetActive(true);
            GameObject.Find("Main Camera").GetComponent<CameraMovement>().enabled = false;
        }
    }
}
