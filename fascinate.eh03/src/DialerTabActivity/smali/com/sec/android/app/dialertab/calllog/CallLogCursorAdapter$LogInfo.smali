.class public final Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;
.super Ljava/lang/Object;
.source "CallLogCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogInfo"
.end annotation


# instance fields
.field public contactId:J

.field public name:Ljava/lang/String;

.field public name_reversed:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
