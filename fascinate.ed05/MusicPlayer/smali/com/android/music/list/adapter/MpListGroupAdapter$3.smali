.class Lcom/android/music/list/adapter/MpListGroupAdapter$3;
.super Ljava/lang/Object;
.source "MpListGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/adapter/MpListGroupAdapter;->setCheckBox(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/list/adapter/MpListGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$3;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$3;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-virtual {v0}, Lcom/android/music/list/adapter/MpListGroupAdapter;->setCheckAll()V

    .line 442
    return-void
.end method
