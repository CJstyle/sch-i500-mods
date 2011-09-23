.class Lcom/sec/android/app/camera/MenuHelper$UpdateLocationCallback;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/sec/android/app/camera/ReverseGeocoderTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/MenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateLocationCallback"
.end annotation


# instance fields
.field mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, view:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$UpdateLocationCallback;->mView:Ljava/lang/ref/WeakReference;

    .line 202
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuHelper$UpdateLocationCallback;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 209
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    const v1, 0x7f0a0086

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/MenuHelper;->access$000(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    .line 214
    :cond_1
    const v1, 0x7f0a0085

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/MenuHelper;->access$100(Landroid/view/View;I)V

    goto :goto_0
.end method
