.class Lcom/sec/android/app/cradle/CradleWeatherSettings$4;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleWeatherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->removeDialog(I)V

    .line 306
    return-void
.end method
