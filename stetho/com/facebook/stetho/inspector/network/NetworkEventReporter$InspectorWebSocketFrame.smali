.class public interface abstract Lcom/facebook/stetho/inspector/network/NetworkEventReporter$InspectorWebSocketFrame;
.super Ljava/lang/Object;
.source "NetworkEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/network/NetworkEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InspectorWebSocketFrame"
.end annotation


# static fields
.field public static final OPCODE_BINARY:I = 0x2

.field public static final OPCODE_CONNECTION_CLOSE:I = 0x8

.field public static final OPCODE_CONTINUATION:I = 0x0

.field public static final OPCODE_PING:I = 0x9

.field public static final OPCODE_PONG:I = 0xa

.field public static final OPCODE_TEXT:I = 0x1


# virtual methods
.method public abstract mask()Z
.end method

.method public abstract opcode()I
.end method

.method public abstract payloadData()Ljava/lang/String;
.end method

.method public abstract requestId()Ljava/lang/String;
.end method
