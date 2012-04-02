.class Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener$1;
.super Ljava/lang/Object;
.source "MusicSettingsEqualizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener$1;->this$1:Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener$1;->this$1:Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    iget-object v0, v0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 818
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener$1;->this$1:Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;

    iget-object v0, v0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 819
    return-void
.end method
