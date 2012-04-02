.class public Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
.super Ljava/lang/Object;
.source "CallLogCursorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdxData"
.end annotation


# instance fields
.field idx:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    .line 89
    return-void
.end method
