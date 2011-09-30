.class public Lcom/sec/android/app/camera/ShutterButton;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ShutterButton$ButtonSet;
    }
.end annotation


# instance fields
.field private bIsTouchPressed:Z

.field private buttonSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/ShutterButton$ButtonSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContinousProgressing:Z

.field private mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 9
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 44
    iput-boolean v7, p0, Lcom/sec/android/app/camera/ShutterButton;->bIsTouchPressed:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->buttonSetList:Ljava/util/List;

    .line 72
    iput-boolean v7, p0, Lcom/sec/android/app/camera/ShutterButton;->bIsTouchPressed:Z

    .line 74
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/ShutterButton;->setCaptureEnabled(Z)V

    .line 75
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/ShutterButton;->setTouchHandled(Z)V

    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/ShutterButton;->init()V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 79
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00dd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSoundEffectsEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00dc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/ShutterButton;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/camera/ShutterButton;->populateButtonSet()V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShutterButton;->initializeButtons()V

    .line 105
    return-void
.end method

.method private populateButtonSet()V
    .locals 8

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/camera/ShutterButton;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v4, 0x7f020148

    const v5, 0x7f020149

    const v6, 0x7f020147

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;-><init>(Lcom/sec/android/app/camera/ShutterButton;ILcom/sec/android/app/camera/widget/TwImageButton;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v7, p0, Lcom/sec/android/app/camera/ShutterButton;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v4, 0x7f02013d

    const v5, 0x7f02013e

    const v6, 0x7f02013c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;-><init>(Lcom/sec/android/app/camera/ShutterButton;ILcom/sec/android/app/camera/widget/TwImageButton;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public hideTrayButton()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public initializeButtons()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ShutterButton;->updateButton(I)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ShutterButton;->updateButton(I)V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 209
    packed-switch p1, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShutterButton;->setButtonLocked()V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShutterButton;->setButtonUnlocked()V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00dc

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    .line 122
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v1

    .line 156
    :goto_1
    return v0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 130
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ShutterButton;->mContinousProgressing:Z

    .line 133
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ShutterButton;->bIsTouchPressed:Z

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 139
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ShutterButton;->bIsTouchPressed:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/ShutterButton;->bIsTouchPressed:Z

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 146
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mContinousProgressing:Z

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 148
    iput-boolean v2, p0, Lcom/sec/android/app/camera/ShutterButton;->mContinousProgressing:Z

    .line 151
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ShutterButton;->bIsTouchPressed:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/ShutterButton;->bIsTouchPressed:Z

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setButtonLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 189
    const-string v0, "ShutterButton"

    const-string v1, "setButtonLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 196
    :cond_1
    return-void
.end method

.method public setButtonUnlocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    const-string v0, "ShutterButton"

    const-string v1, "setButtonUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 206
    :cond_1
    return-void
.end method

.method public showTrayButton()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterButton;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 227
    :cond_0
    return-void
.end method

.method public updateButton(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/sec/android/app/camera/ShutterButton;->buttonSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/ShutterButton$ButtonSet;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;

    .line 164
    .local v0, buttonSet:Lcom/sec/android/app/camera/ShutterButton$ButtonSet;
    iget v2, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mMode:I

    if-ne v2, p1, :cond_0

    .line 165
    iget-object v2, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v3, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mNormalBackgroundId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 166
    iget-object v2, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v3, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mClickedBackgroundId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 167
    iget-object v2, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v3, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mDimmedBackgroundId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmedImage(I)V

    .line 168
    iget-object v2, v0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 172
    .end local v0           #buttonSet:Lcom/sec/android/app/camera/ShutterButton$ButtonSet;
    :cond_1
    return-void
.end method
