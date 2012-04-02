.class Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$2;
.super Ljava/lang/Object;
.source "MusicSettingsMusicMenuReorderListView.java"

# interfaces
.implements Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$2;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drag(II)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 460
    const-string v0, "DRAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$2;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$100(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$2;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$102(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;Z)Z

    .line 463
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$2;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->setScrollbarFadingEnabled(Z)V

    .line 465
    :cond_0
    return-void
.end method
