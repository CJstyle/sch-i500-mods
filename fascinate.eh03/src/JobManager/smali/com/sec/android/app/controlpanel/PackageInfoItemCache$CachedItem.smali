.class public Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;
.super Ljava/lang/Object;
.source "PackageInfoItemCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CachedItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ecd227220L


# instance fields
.field private appName:Ljava/lang/String;

.field private codeSize:J

.field private dataSize:J

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/PackageInfoItemCache;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/controlpanel/PackageInfoItemCache;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter "packageName"
    .parameter "appName"
    .parameter "codeSize"
    .parameter "dataSize"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->this$0:Lcom/sec/android/app/controlpanel/PackageInfoItemCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->packageName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->appName:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->codeSize:J

    .line 25
    iput-wide p6, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->dataSize:J

    .line 26
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeSize()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->codeSize:J

    return-wide v0
.end method

.method public getDataSize()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->dataSize:J

    return-wide v0
.end method
