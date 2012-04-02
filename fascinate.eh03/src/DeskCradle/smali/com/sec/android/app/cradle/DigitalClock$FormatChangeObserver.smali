.class Lcom/sec/android/app/cradle/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/DigitalClock;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/cradle/DigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/cradle/DigitalClock$FormatChangeObserver;->this$0:Lcom/sec/android/app/cradle/DigitalClock;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock$FormatChangeObserver;->this$0:Lcom/sec/android/app/cradle/DigitalClock;

    invoke-static {v0}, Lcom/sec/android/app/cradle/DigitalClock;->access$400(Lcom/sec/android/app/cradle/DigitalClock;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/cradle/DigitalClock$FormatChangeObserver;->this$0:Lcom/sec/android/app/cradle/DigitalClock;

    invoke-static {v0}, Lcom/sec/android/app/cradle/DigitalClock;->access$200(Lcom/sec/android/app/cradle/DigitalClock;)V

    .line 110
    return-void
.end method
