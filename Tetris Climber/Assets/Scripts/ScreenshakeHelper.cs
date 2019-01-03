using System;
using UnityEngine;
using UnityStandardAssets.ImageEffects;


[ExecuteInEditMode]
//[AddComponentMenu("Image Effects/Color Adjustments/Sepia Tone")]
public class ScreenshakeHelper : ImageEffectBase
{
    public float minshake = 0.004f;
    public float maxshake = 0.01f;
    public float shake;
    public bool noshake = true;
    Game game;
    void Awake()
    {
        game = GameObject.FindObjectOfType<Game>();
    }
    // Called by camera to apply image effect
    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        shake = Mathf.Lerp(minshake, maxshake, 0);

        if (!noshake)
        {
            material.SetFloat("_shakeintensity", shake);
        }
        else
        {
            material.SetFloat("_shakeintensity", 0);
        }


        Graphics.Blit(source, destination, material);
    }
}

