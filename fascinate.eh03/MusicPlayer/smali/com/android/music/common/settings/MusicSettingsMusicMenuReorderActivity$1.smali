.class Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity$1;
.super Ljava/lang/Object;
.source "MusicSettingsMusicMenuReorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity;->initButtonListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity$1;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity$1;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity;->access$000(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity;)Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->submitReorder()V

    .line 50
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity$1;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity;

    invoke-virtual {v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity;->finish()V

    .line 52
    return-void
.end method
