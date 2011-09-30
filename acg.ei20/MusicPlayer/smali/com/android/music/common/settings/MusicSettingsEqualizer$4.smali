.class Lcom/android/music/common/settings/MusicSettingsEqualizer$4;
.super Ljava/lang/Object;
.source "MusicSettingsEqualizer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/settings/MusicSettingsEqualizer;->createDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$4;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 601
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$4;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$702(Lcom/android/music/common/settings/MusicSettingsEqualizer;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$4;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    const-string v2, "%s%d|"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$4;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$700(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$4;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v5

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$702(Lcom/android/music/common/settings/MusicSettingsEqualizer;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$4;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$700(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/common/util/MusicValueSaveController;->setCustomEqualizer(Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$4;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 613
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$4;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$500(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V

    .line 614
    return-void
.end method
