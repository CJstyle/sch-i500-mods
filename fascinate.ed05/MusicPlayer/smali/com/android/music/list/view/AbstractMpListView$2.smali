.class Lcom/android/music/list/view/AbstractMpListView$2;
.super Ljava/lang/Object;
.source "AbstractMpListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/view/AbstractMpListView;->setSoftKey(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/view/AbstractMpListView;


# direct methods
.method constructor <init>(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2124
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView$2;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView$2;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->optionMusicPlayer()V

    .line 2127
    return-void
.end method
