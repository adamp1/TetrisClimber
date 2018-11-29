﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Manga : MonoBehaviour {

	public Material material;

    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        // Copy the source Render Texture to the destination,
        // applying the material along the way.
        Graphics.Blit(source, destination, material);
    }
}
