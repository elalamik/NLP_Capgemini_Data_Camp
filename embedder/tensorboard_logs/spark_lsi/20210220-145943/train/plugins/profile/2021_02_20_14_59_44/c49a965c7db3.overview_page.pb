?	????;=@????;=@!????;=@	U4Qc??U4Qc??!U4Qc??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6????;=@Φ#??=;@1?H??_???A??'?b??I?]=???Y!:???*	/?$?_@2U
Iterator::Model::ParallelMapV2ϤM?=???!,a??w(;@)ϤM?=???1,a??w(;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat\r?)???!??&l?M8@)?I`s???1)??A?3@:Preprocessing2F
Iterator::ModelX??"?t??!?B?Z{?F@)(?r???1?$;?~2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateW?c#???!9FA/>5@)B]?P???1{?5??'@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicel#?	???!??V?V?"@)l#?	???1??V?V?"@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip-?s?ڱ?!???eK@)??>s֧|?1}??I?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????:8x?!̙{???@)????:8x?1̙{???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?W??I??!?Vr??8@)???͋s?1??`Q<?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9U4Qc??It???oX@Q?$???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	Φ#??=;@Φ#??=;@!Φ#??=;@      ??!       "	?H??_????H??_???!?H??_???*      ??!       2	??'?b????'?b??!??'?b??:	?]=????]=???!?]=???B      ??!       J	!:???!:???!!:???R      ??!       Z	!:???!:???!!:???b      ??!       JGPUYU4Qc??b qt???oX@y?$????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits]j?????!]j?????"<
sequential_83/dense_249/MatMulMatMul??L????!=???[??0"-
IteratorGetNext/_1_Send?5
Vљ??!ڃV?'o??"<
sequential_83/dense_250/MatMulMatMul??h?:s??!?}[6??0"<
sequential_83/dense_251/SoftmaxSoftmax??s)???!DK?P????"J
,gradient_tape/sequential_83/dense_250/MatMulMatMul??1????!????????0"J
,gradient_tape/sequential_83/dense_249/MatMulMatMul?)?l???!
P??0"J
.gradient_tape/sequential_83/dense_251/MatMul_1MatMulsYJzݖ?!?d ?'??"<
sequential_83/dense_251/MatMulMatMul!^ln?Ζ?!?*????0"J
.gradient_tape/sequential_83/dense_250/MatMul_1MatMule???!???!?" ?%V??Q      Y@Y[ZZZZZ6@ajiiiiiS@qϿ?w?}I@y??[h???"?
both?Your program is POTENTIALLY input-bound because 93.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?51.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 