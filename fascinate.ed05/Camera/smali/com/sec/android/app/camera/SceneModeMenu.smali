.class public Lcom/sec/android/app/camera/SceneModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "SceneModeMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;
    }
.end annotation


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnSceneModeChangedListener:Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;

.field mSelectedSceneMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/SceneModeResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 7
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "resourceData"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 46
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/SceneModeMenu;->init(Lcom/sec/android/app/camera/SceneModeResourceData;)V

    .line 47
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/SceneModeResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private setSavedSceneMode()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSceneModePreview(I)V

    .line 90
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->clear()V

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 61
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 62
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 113
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 104
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 105
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSceneModePreview(I)V

    .line 77
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 78
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mOnSceneModeChangedListener:Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mOnSceneModeChangedListener:Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;->onSceneModeChanged(I)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mOnSceneModeChangedListener:Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00d5
        :pswitch_0
    .end packed-switch
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/camera/SceneModeMenu;->setSavedSceneMode()V

    .line 94
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 95
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 134
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 122
    goto :goto_0

    .line 125
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 131
    goto :goto_0

    :cond_5
    move v0, v2

    .line 134
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 138
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 155
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 143
    goto :goto_0

    .line 146
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 147
    goto :goto_0

    .line 150
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 152
    goto :goto_0

    :cond_5
    move v0, v2

    .line 155
    goto :goto_0
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/SceneModeMenu;->setSavedSceneMode()V

    .line 99
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 100
    return-void
.end method

.method public setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mOnSceneModeChangedListener:Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;

    .line 82
    return-void
.end method
