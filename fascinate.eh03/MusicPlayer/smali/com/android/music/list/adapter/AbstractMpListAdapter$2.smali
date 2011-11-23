.class Lcom/android/music/list/adapter/AbstractMpListAdapter$2;
.super Ljava/lang/Object;
.source "AbstractMpListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/adapter/AbstractMpListAdapter;->setCheckBox(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$2;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$2;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-virtual {v0}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->setCheckAll()V

    .line 224
    return-void
.end method
