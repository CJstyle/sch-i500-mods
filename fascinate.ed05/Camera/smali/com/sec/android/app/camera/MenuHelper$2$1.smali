.class Lcom/sec/android/app/camera/MenuHelper$2$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/MenuHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$2$1;->this$0:Lcom/sec/android/app/camera/MenuHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 554
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 555
    return-void
.end method
