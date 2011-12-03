.class Lcom/android/browser/BitmapWebViewSurface3D$Renderer;
.super Ljava/lang/Object;
.source "BitmapWebViewSurface3D.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BitmapWebViewSurface3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Renderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BitmapWebViewSurface3D;


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebViewSurface3D;)V
    .locals 0
    .parameter

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 5
    .parameter "op"

    .prologue
    const-string v4, ": glError "

    .line 1639
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 1640
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1643
    :cond_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "glAttachShader"

    .line 1608
    const v4, 0x8b31

    invoke-direct {p0, v4, p1}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 1609
    .local v3, vertexShader:I
    if-nez v3, :cond_0

    move v4, v5

    .line 1634
    :goto_0
    return v4

    .line 1613
    :cond_0
    const v4, 0x8b30

    invoke-direct {p0, v4, p2}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 1614
    .local v1, pixelShader:I
    if-nez v1, :cond_1

    move v4, v5

    .line 1615
    goto :goto_0

    .line 1618
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 1619
    .local v2, program:I
    if-eqz v2, :cond_2

    .line 1620
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1621
    const-string v4, "glAttachShader"

    invoke-direct {p0, v7}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 1622
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1623
    const-string v4, "glAttachShader"

    invoke-direct {p0, v7}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 1624
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1625
    new-array v0, v6, [I

    .line 1626
    .local v0, linkStatus:[I
    const v4, 0x8b82

    invoke-static {v2, v4, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1627
    aget v4, v0, v5

    if-eq v4, v6, :cond_2

    .line 1628
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1631
    const/4 v2, 0x0

    .end local v0           #linkStatus:[I
    :cond_2
    move v4, v2

    .line 1634
    goto :goto_0
.end method

.method private loadBgTexture()V
    .locals 9

    .prologue
    const/16 v8, 0x2901

    const/high16 v7, 0x4618

    const/4 v6, 0x1

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 1759
    new-array v1, v6, [I

    .line 1761
    .local v1, textures:[I
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1500(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1763
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1500(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    aput v2, v1, v4

    .line 1764
    invoke-static {v6, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1768
    :cond_0
    invoke-static {v6, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1770
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    aget v3, v1, v4

    invoke-static {v2, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1502(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1771
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1500(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1773
    const/16 v2, 0x2801

    invoke-static {v5, v2, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1775
    const/16 v2, 0x2800

    invoke-static {v5, v2, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1779
    const/16 v2, 0x2802

    invoke-static {v5, v2, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1781
    const/16 v2, 0x2803

    invoke-static {v5, v2, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1785
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->getBGBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1786
    .local v0, bgBitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBgBitmapW:I

    .line 1787
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBgBitmapH:I

    .line 1789
    invoke-static {v5, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1792
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1794
    return-void
.end method

.method private loadCheckerBoardTexture()V
    .locals 9

    .prologue
    const/16 v8, 0x2901

    const/high16 v7, 0x4618

    const/4 v6, 0x1

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 1800
    new-array v1, v6, [I

    .line 1802
    .local v1, textures:[I
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1804
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    aput v2, v1, v4

    .line 1805
    invoke-static {v6, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1809
    :cond_0
    invoke-static {v6, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1811
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    aget v3, v1, v4

    invoke-static {v2, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1602(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1812
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1814
    const/16 v2, 0x2801

    invoke-static {v5, v2, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1816
    const/16 v2, 0x2800

    invoke-static {v5, v2, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1820
    const/16 v2, 0x2802

    invoke-static {v5, v2, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1822
    const/16 v2, 0x2803

    invoke-static {v5, v2, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1825
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->getCheckerBoardBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1827
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1830
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1832
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 1591
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 1592
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 1593
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1594
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1595
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 1596
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1597
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 1598
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1601
    const/4 v1, 0x0

    .line 1604
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadTitleBarTexture(I)V
    .locals 10
    .parameter "width"

    .prologue
    const v9, 0x812f

    const v8, 0x46180400

    const/4 v7, 0x1

    const/16 v6, 0xde1

    const/4 v5, 0x0

    .line 1694
    :try_start_0
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 1695
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1696
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, v3, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v3

    sget-object v4, Lcom/android/browser/BitmapWebView;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    new-array v1, v7, [I

    .line 1710
    .local v1, textures:[I
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1400(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1712
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1400(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    aput v2, v1, v5

    .line 1713
    invoke-static {v7, v1, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1716
    :cond_1
    invoke-static {v7, v1, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1720
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    aget v3, v1, v5

    invoke-static {v2, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1402(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1721
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v2}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1400(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v2

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1725
    const/16 v2, 0x2801

    invoke-static {v6, v2, v8}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1728
    const/16 v2, 0x2800

    invoke-static {v6, v2, v8}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1734
    const/16 v2, 0x2802

    invoke-static {v6, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1737
    const/16 v2, 0x2803

    invoke-static {v6, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1746
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v5, v2, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1754
    .end local v1           #textures:[I
    :goto_0
    return-void

    .line 1699
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1701
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTitleBarTextureBitmap:  fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 1703
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1704
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, v3, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/browser/BitmapWebView;->setState(I)V

    goto :goto_0
.end method

.method private loadWebViewTexture()V
    .locals 8

    .prologue
    const v7, 0x812f

    const v6, 0x46180400

    const/16 v5, 0x60

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 1647
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    aget v1, v1, v4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1649
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    invoke-static {v5, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1654
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    invoke-static {v5, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1656
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 1658
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    aget v1, v1, v0

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1661
    const/16 v1, 0x2801

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1663
    const/16 v1, 0x2800

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1667
    const/16 v1, 0x2802

    invoke-static {v3, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1669
    const/16 v1, 0x2803

    invoke-static {v3, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1678
    :cond_1
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 25
    .parameter "gl"

    .prologue
    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1338
    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    const/high16 v22, 0x3f80

    const/high16 v23, 0x3f80

    :try_start_0
    invoke-static/range {v20 .. v23}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1339
    const/16 v20, 0x4000

    invoke-static/range {v20 .. v20}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1341
    new-instance v5, Lcom/android/browser/BitmapWebView$DrawInfo;

    invoke-direct {v5}, Lcom/android/browser/BitmapWebView$DrawInfo;-><init>()V

    .line 1342
    .local v5, drawInfo:Lcom/android/browser/BitmapWebView$DrawInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->getDrawInfo(Lcom/android/browser/BitmapWebView$DrawInfo;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1343
    monitor-exit v19

    .line 1469
    :goto_0
    return-void

    .line 1356
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureScaleX:F

    move v12, v0

    .line 1357
    .local v12, sx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureScaleY:F

    move v13, v0

    .line 1360
    .local v13, sy:F
    const/high16 v20, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    move/from16 v22, v0

    mul-float v22, v22, v12

    div-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    mul-float v10, v20, v21

    .line 1361
    .local v10, scrolldx:F
    const/high16 v20, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    move/from16 v22, v0

    mul-float v22, v22, v13

    div-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    mul-float v11, v20, v21

    .line 1365
    .local v11, scrolldy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1368
    move-object v0, v5

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$500(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v20 .. v24}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v20 .. v24}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->drawBg()V

    .line 1376
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLY:F

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v24}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v12

    move v3, v13

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    move/from16 v23, v0

    const/high16 v24, 0x3f80

    invoke-static/range {v20 .. v24}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x0

    move v0, v11

    neg-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v10

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$500(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v20 .. v24}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v20 .. v24}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1387
    move-object v0, v5

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->drawCheckerBoard()V

    .line 1390
    :cond_2
    move-object v0, v5

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->drawShadow()V

    .line 1395
    :cond_3
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1396
    .local v14, texRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RegionIterator;

    move-object v0, v5

    iget-object v0, v0, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 1397
    .local v6, iter:Landroid/graphics/RegionIterator;
    :goto_1
    invoke-virtual {v6, v14}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->drawRect(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1467
    .end local v5           #drawInfo:Lcom/android/browser/BitmapWebView$DrawInfo;
    .end local v6           #iter:Landroid/graphics/RegionIterator;
    .end local v10           #scrolldx:F
    .end local v11           #scrolldy:F
    .end local v12           #sx:F
    .end local v13           #sy:F
    .end local v14           #texRect:Landroid/graphics/Rect;
    :catchall_0
    move-exception v20

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 1403
    .restart local v5       #drawInfo:Lcom/android/browser/BitmapWebView$DrawInfo;
    .restart local v6       #iter:Landroid/graphics/RegionIterator;
    .restart local v10       #scrolldx:F
    .restart local v11       #scrolldy:F
    .restart local v12       #sx:F
    .restart local v13       #sy:F
    .restart local v14       #texRect:Landroid/graphics/Rect;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1407
    .local v16, top:F
    const/4 v7, 0x0

    .line 1408
    .local v7, left:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1409
    .local v17, zoomLeft:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1410
    .local v18, zoomTop:F
    const/high16 v20, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    mul-float v15, v20, v21

    .line 1413
    .local v15, titleheight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    sub-float v21, v7, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v7

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    sub-float v21, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v16

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x0

    aget v20, v20, v21

    mul-float v20, v20, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v21

    const/16 v22, 0x4

    aget v21, v21, v22

    mul-float v21, v21, v16

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v21

    const/16 v22, 0xc

    aget v21, v21, v22

    const/high16 v22, 0x3f80

    mul-float v21, v21, v22

    add-float v8, v20, v21

    .line 1420
    .local v8, newleft:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x1

    aget v20, v20, v21

    mul-float v20, v20, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v21

    const/16 v22, 0x5

    aget v21, v21, v22

    mul-float v21, v21, v16

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v21

    const/16 v22, 0xd

    aget v21, v21, v22

    const/high16 v22, 0x3f80

    mul-float v21, v21, v22

    add-float v9, v20, v21

    .line 1423
    .local v9, newtop:F
    const/high16 v20, 0x3f80

    cmpg-float v20, v9, v20

    if-gtz v20, :cond_6

    .line 1425
    const/high16 v20, 0x3f80

    sub-float v20, v20, v15

    cmpg-float v20, v9, v20

    if-gez v20, :cond_5

    .line 1426
    const/high16 v20, 0x3f80

    sub-float v9, v20, v15

    .line 1435
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    sub-float v23, v9, v23

    add-float v23, v23, v15

    const/16 v24, 0x0

    invoke-static/range {v20 .. v24}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$500(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/browser/BitmapWebViewSurface3D;->access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v20 .. v24}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->access$600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/browser/BitmapWebViewSurface3D;->access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v20 .. v24}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->drawTitleBar()V

    .line 1456
    .end local v7           #left:F
    .end local v8           #newleft:F
    .end local v9           #newtop:F
    .end local v15           #titleheight:F
    .end local v16           #top:F
    .end local v17           #zoomLeft:F
    .end local v18           #zoomTop:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    move/from16 v20, v0

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-nez v20, :cond_7

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/BitmapWebViewSurface3D;->drawScrollbar()V

    .line 1464
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/browser/BitmapWebView;->setDrawFrameFlag(Z)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/BitmapWebView;->onDrawFinished()V

    .line 1467
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 1474
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 1478
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1479
    int-to-float v0, p2

    int-to-float v2, p3

    div-float v3, v0, v2

    .line 1481
    .local v3, ratio:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$700(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v0

    neg-float v2, v3

    const/high16 v4, -0x4080

    const/high16 v5, 0x3f80

    const/high16 v6, 0x4040

    const/high16 v7, 0x40e0

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 1487
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    int-to-float v1, p2

    iput v1, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    .line 1488
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    int-to-float v1, p3

    iput v1, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    .line 1492
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->requestSurfaceChanged()V

    .line 1498
    invoke-direct {p0, p2}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadTitleBarTexture(I)V

    .line 1499
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1500
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1504
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 1509
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 1513
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    const-string v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nattribute vec4 aColor;\nvarying vec4 vTextureCoord;\nvarying vec4 vColor;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = uTextureMatrix * aTextureCoord;\n  vColor=aColor;\n}\n"

    const-string v4, "precision lowp float;\nvarying vec4 vTextureCoord;\nvarying vec4 vColor;\nuniform lowp sampler2D sTexture;\nuniform int uUseColor;\nvoid main() {\nif(uUseColor == 1)\n{\n gl_FragColor = vColor;\n}\nelse\n{\n gl_FragColor = texture2D(sTexture, vTextureCoord.st);\n}\n}\n"

    invoke-direct {p0, v3, v4}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$802(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1514
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1588
    :goto_0
    return-void

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "aPosition"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$902(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1518
    const-string v0, "glGetAttribLocation aPosition"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 1519
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$900(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1520
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1522
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "aTextureCoord"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1002(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1523
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 1524
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 1525
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "aColor"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1102(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1529
    const-string v0, "glGetAttribLocation maColorHandle"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1100(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1531
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for maColorHandle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1534
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "uMVPMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$502(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1535
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 1536
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$500(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 1537
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1540
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "uUseColor"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1202(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1541
    const-string v0, "glGetUniformLocation muUseColorHandle"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 1542
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1200(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 1543
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uUseColor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1546
    :cond_5
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$800(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v3

    const-string v4, "uTextureMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$602(Lcom/android/browser/BitmapWebViewSurface3D;I)I

    .line 1547
    const-string v0, "glGetUniformLocation uTextureMatrix"

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->checkGlError(Ljava/lang/String;)V

    .line 1548
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$600(Lcom/android/browser/BitmapWebViewSurface3D;)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 1549
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uTextureMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1553
    :cond_6
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->access$1300(Lcom/android/browser/BitmapWebViewSurface3D;)[F

    move-result-object v0

    const/high16 v4, -0x3f60

    const/high16 v9, 0x3f80

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 1557
    invoke-direct {p0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadCheckerBoardTexture()V

    .line 1558
    invoke-direct {p0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadBgTexture()V

    .line 1559
    invoke-direct {p0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->loadWebViewTexture()V

    .line 1562
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    if-lez v0, :cond_7

    .line 1566
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v3, v3, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    invoke-static {v0, v2, v3}, Lcom/android/browser/BitmapWebViewSurface3D;->access$200(Lcom/android/browser/BitmapWebViewSurface3D;II)V

    .line 1568
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    invoke-static {v0, v2, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->access$200(Lcom/android/browser/BitmapWebViewSurface3D;II)V

    .line 1571
    :cond_7
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mGLThread:Ljava/lang/Thread;

    .line 1572
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1573
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1574
    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1575
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_0
.end method
