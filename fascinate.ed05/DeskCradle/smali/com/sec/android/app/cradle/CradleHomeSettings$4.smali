.class Lcom/sec/android/app/cradle/CradleHomeSettings$4;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleHomeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleHomeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->removeDialog(I)V

    .line 445
    return-void
.end method
