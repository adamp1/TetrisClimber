﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityStandardAssets.ImageEffects;

public class ContrastSlider : MonoBehaviour
{
    public float contrast = 0;
    ContrastEnhance effect;
    Slider slider;

    // Start is called before the first frame update
    void Start()
    {
        slider = GetComponent<Slider>();
        effect = GameObject.FindObjectOfType<ContrastEnhance>();
    }

    // Update is called once per frame
    void Update()
    {
        PlayerPrefs.SetFloat("Settings1", slider.value);
        effect.intensity = slider.value;
    }
}
