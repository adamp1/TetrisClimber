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

    float Helper(){

        float a = Mathf.Lerp(-1, 1, extremeslider.value);

        if (extremeslider.value == 0){
            return 1;
        }

        return extremeslider.value;

    }

    // Update is called once per frame
    void Update()
    {
        PlayerPrefs.SetFloat("Settings3", slider.value);
        //effect.bloomIntensity = Mathf.Lerp(bloommin, bloommax, slider.value);

        float helper = Helper();

        

        //crtmultiplier = Mathf.Lerp(-1, 1, helper) * extremecrt;
        crtmultiplier = extremecrt * helper;
        float crt = slider.value * crtmultiplier;
        effect.thelerp = crt;
        //print(crt + " slider value " + slider.value + " helper " + helper);
        //effect.thelerp = slider.value;

        effect.thelerp = Mathf.Lerp(-extremecrt, extremecrt, slider.value);
        //print(effect.thelerp);
        effect.thelerp = Mathf.Lerp(-5, 1, 1-slider.value);
        
    }
}
