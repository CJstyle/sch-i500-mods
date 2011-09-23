.class Lcom/sec/android/app/camera/MenuHelper$2$2;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper$2;->run(Landroid/net/Uri;Lcom/sec/android/app/camera/gallery/IImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/MenuHelper$2;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;

.field final synthetic val$d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/MenuHelper$2;Landroid/app/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$2$2;->this$0:Lcom/sec/android/app/camera/MenuHelper$2;

    iput-object p2, p0, Lcom/sec/android/app/camera/MenuHelper$2$2;->val$builder:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/sec/android/app/camera/MenuHelper$2$2;->val$d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuHelper$2$2;->val$builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuHelper$2$2;->val$d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 566
    return-void
.end method
