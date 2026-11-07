.class final Lcn/sharesdk/framework/loopshare/watermark/c$1;
.super Ljava/lang/Object;
.source "FfmpegCommandCentre.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/loopshare/watermark/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>([ZLjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcn/sharesdk/framework/loopshare/watermark/c$1;->a:[Z

    iput-object p2, p0, Lcn/sharesdk/framework/loopshare/watermark/c$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/framework/loopshare/watermark/c$1;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcn/sharesdk/framework/loopshare/watermark/c$1;->a:[Z

    iget-object v1, p0, Lcn/sharesdk/framework/loopshare/watermark/c$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/framework/loopshare/watermark/c$1;->c:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/sharesdk/framework/loopshare/watermark/a;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return-void
.end method
