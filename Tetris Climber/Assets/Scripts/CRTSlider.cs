using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.ImageEffects;
using UnityEngine.UI;

public class CRTSlider : MonoBehaviour
{

    public float extremecrt = 50;
    public float crtmultiplier;
    CRT effect;
    Slider slider;
    public Slider extremeslider;
    
    // Start is called before the first frame update
    void Start()
    {

        slider = GetComponent<Slider>();
        effect = GameObject.FindObjectOfType<CRT>();
        
    }

    // Update is called once per frame
    void Update()
    {
        //effect.bloomIntensity = Mathf.Lerp(bloommin, bloommax, slider.value);
        crtmultiplier = (extremeslider.value - 0.5f) * extremecrt;
        float crt = slider.value * crtmultiplier;
        effect.thelerp = crt;
        effect.thelerp = slider.value;
    }
}
