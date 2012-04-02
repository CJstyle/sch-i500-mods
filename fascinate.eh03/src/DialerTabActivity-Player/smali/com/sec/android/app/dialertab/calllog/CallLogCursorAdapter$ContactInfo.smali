.class public final Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
.super Ljava/lang/Object;
.source "CallLogCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactInfo"
.end annotation


# static fields
.field public static EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;


# instance fields
.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public id:I

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public name_Reversed:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public raw_contact_id:J

.field public state:Ljava/lang/String;

.field public stateAbbr:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
