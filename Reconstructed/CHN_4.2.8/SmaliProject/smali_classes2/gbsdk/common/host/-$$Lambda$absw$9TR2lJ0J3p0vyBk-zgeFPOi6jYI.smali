.class public final synthetic Lgbsdk/common/host/-$$Lambda$absw$9TR2lJ0J3p0vyBk-zgeFPOi6jYI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/volcengine/zeus/download/IDownloader;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/-$$Lambda$absw$9TR2lJ0J3p0vyBk-zgeFPOi6jYI;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final downloader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/volcengine/zeus/download/IZeusDownloadListener;Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lgbsdk/common/host/-$$Lambda$absw$9TR2lJ0J3p0vyBk-zgeFPOi6jYI;->f$0:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v1 .. v11}, Lgbsdk/common/host/absw;->lambda$9TR2lJ0J3p0vyBk-zgeFPOi6jYI(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/volcengine/zeus/download/IZeusDownloadListener;Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V

    return-void
.end method
