.class Lcom/sec/android/app/camera/AddMeView$1;
.super Ljava/lang/Object;
.source "AddMeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AddMeView;->onAddMeProgressStitching(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AddMeView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AddMeView;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/AddMeView$1;->this$0:Lcom/sec/android/app/camera/AddMeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView$1;->this$0:Lcom/sec/android/app/camera/AddMeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/AddMeView;->access$002(Lcom/sec/android/app/camera/AddMeView;Z)Z

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/AddMeView$1;->this$0:Lcom/sec/android/app/camera/AddMeView;

    invoke-static {v0}, Lcom/sec/android/app/camera/AddMeView;->access$100(Lcom/sec/android/app/camera/AddMeView;)Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView$ViewAddMeRect;->invalidate()V

    .line 160
    return-void
.end method
