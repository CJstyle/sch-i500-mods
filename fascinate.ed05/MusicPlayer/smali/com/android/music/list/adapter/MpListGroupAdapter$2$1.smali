.class Lcom/android/music/list/adapter/MpListGroupAdapter$2$1;
.super Ljava/lang/Object;
.source "MpListGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/adapter/MpListGroupAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/list/adapter/MpListGroupAdapter$2;


# direct methods
.method constructor <init>(Lcom/android/music/list/adapter/MpListGroupAdapter$2;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$2$1;->this$1:Lcom/android/music/list/adapter/MpListGroupAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$2$1;->this$1:Lcom/android/music/list/adapter/MpListGroupAdapter$2;

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListGroupAdapter$2;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-virtual {v0}, Lcom/android/music/list/adapter/MpListGroupAdapter;->setCheckAll()V

    .line 255
    return-void
.end method
