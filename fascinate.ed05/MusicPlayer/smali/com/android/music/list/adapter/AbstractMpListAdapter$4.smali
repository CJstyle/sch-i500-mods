.class Lcom/android/music/list/adapter/AbstractMpListAdapter$4;
.super Ljava/lang/Object;
.source "AbstractMpListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/adapter/AbstractMpListAdapter;->getSelectAllView(Landroid/view/View;Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

.field final synthetic val$adapter:Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;


# direct methods
.method constructor <init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$4;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iput-object p2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$4;->val$adapter:Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$4;->val$adapter:Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;

    invoke-interface {v0}, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;->setCheckAll()V

    .line 411
    return-void
.end method
