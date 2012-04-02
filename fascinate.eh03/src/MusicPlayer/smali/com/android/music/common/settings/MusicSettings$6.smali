.class Lcom/android/music/common/settings/MusicSettings$6;
.super Ljava/lang/Object;
.source "MusicSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/settings/MusicSettings;->settingsEventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettings;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettings$6;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 401
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings$6;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettings;->access$100(Lcom/android/music/common/settings/MusicSettings;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings$6;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-virtual {v1, v0}, Lcom/android/music/common/settings/MusicSettings;->startActivity(Landroid/content/Intent;)V

    .line 403
    return-void
.end method
