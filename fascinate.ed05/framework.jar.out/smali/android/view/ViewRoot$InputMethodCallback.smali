.class Landroid/view/ViewRoot$InputMethodCallback;
.super Lcom/android/internal/view/IInputMethodCallback$Stub;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputMethodCallback"
.end annotation


# instance fields
.field private mViewRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRoot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewRoot;)V
    .locals 1
    .parameter "viewRoot"

    .prologue
    .line 2853
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodCallback$Stub;-><init>()V

    .line 2854
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRoot$InputMethodCallback;->mViewRoot:Ljava/lang/ref/WeakReference;

    .line 2855
    return-void
.end method


# virtual methods
.method public finishedEvent(IZ)V
    .locals 2
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 2858
    iget-object v1, p0, Landroid/view/ViewRoot$InputMethodCallback;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 2859
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_0

    .line 2860
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRoot;->dispatchFinishedEvent(IZ)V

    .line 2862
    :cond_0
    return-void
.end method

.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 0
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2866
    return-void
.end method
