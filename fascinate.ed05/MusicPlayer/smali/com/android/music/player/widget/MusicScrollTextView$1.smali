.class Lcom/android/music/player/widget/MusicScrollTextView$1;
.super Ljava/lang/Object;
.source "MusicScrollTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/widget/MusicScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/widget/MusicScrollTextView;


# direct methods
.method constructor <init>(Lcom/android/music/player/widget/MusicScrollTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/music/player/widget/MusicScrollTextView$1;->this$0:Lcom/android/music/player/widget/MusicScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView$1;->this$0:Lcom/android/music/player/widget/MusicScrollTextView;

    invoke-virtual {v0}, Lcom/android/music/player/widget/MusicScrollTextView;->startScroll()V

    .line 333
    return-void
.end method
