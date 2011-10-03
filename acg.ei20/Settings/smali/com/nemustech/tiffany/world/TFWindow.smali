.class public Lcom/nemustech/tiffany/world/TFWindow;
.super Landroid/view/Window;
.source "TFWindow.java"


# instance fields
.field mMyDecorView:Landroid/widget/FrameLayout;

.field private mWindowFeatures:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWindow;->mMyDecorView:Landroid/widget/FrameLayout;

    .line 20
    const/16 v0, 0x41

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWindow;->mWindowFeatures:I

    .line 24
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWindow;->mMyDecorView:Landroid/widget/FrameLayout;

    .line 25
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "params"

    .prologue
    .line 42
    return-void
.end method

.method public closeAllPanels()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public closePanel(I)V
    .locals 0
    .parameter "featureId"

    .prologue
    .line 52
    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWindow;->mMyDecorView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowFeatures()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWindow;->mWindowFeatures:I

    return v0
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 92
    return-void
.end method

.method public openPanel(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "featureId"
    .parameter "event"

    .prologue
    .line 97
    return-void
.end method

.method public peekDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 1
    .parameter "featureId"
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "featureId"
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 124
    return-void
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 134
    return-void
.end method

.method public setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    .line 139
    return-void
.end method

.method public setChildInt(II)V
    .locals 0
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 144
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResID"

    .prologue
    .line 149
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 154
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "params"

    .prologue
    .line 159
    return-void
.end method

.method public setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    .line 164
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 0
    .parameter "featureId"
    .parameter "alpha"

    .prologue
    .line 169
    return-void
.end method

.method public setFeatureDrawableResource(II)V
    .locals 0
    .parameter "featureId"
    .parameter "resId"

    .prologue
    .line 174
    return-void
.end method

.method public setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 0
    .parameter "featureId"
    .parameter "uri"

    .prologue
    .line 179
    return-void
.end method

.method public setFeatureInt(II)V
    .locals 0
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 184
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 189
    return-void
.end method

.method public setTitleColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 194
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 199
    return-void
.end method

.method public setWindowFeatures(I)V
    .locals 0
    .parameter "features"

    .prologue
    .line 37
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWindow;->mWindowFeatures:I

    .line 38
    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 28
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 0
    .parameter "get"

    .prologue
    .line 219
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 30
    return-void
.end method

.method public togglePanel(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "featureId"
    .parameter "event"

    .prologue
    .line 224
    return-void
.end method
