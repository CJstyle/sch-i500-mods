.class Lcom/sec/android/app/cradle/CradleMain$1;
.super Ljava/lang/Object;
.source "CradleMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleMain;->updateSpeaker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain$1;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 475
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 476
    return-void
.end method
