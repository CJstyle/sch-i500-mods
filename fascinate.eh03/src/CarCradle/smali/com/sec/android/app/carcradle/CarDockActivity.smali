.class public Lcom/sec/android/app/carcradle/CarDockActivity;
.super Landroid/app/Activity;
.source "CarDockActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/carcradle/CarDockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->enableCarMode(I)V

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarDockActivity;->finish()V

    .line 40
    return-void
.end method
