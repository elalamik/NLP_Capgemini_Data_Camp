?	?Q???A@?Q???A@!?Q???A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?Q???A@????@@1F?N????A??????I??G7??*	?n???Z@2U
Iterator::Model::ParallelMapV2?{,}肚?!;25?/8@)?{,}肚?1;25?/8@:Preprocessing2F
Iterator::Model?6qr?C??!?^???G@)???g???1d??h?5@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????Li??!y????:@)????????1??e<ޡ3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatN^d~???!?[??2@)?????P??1Q?zC?/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicejP4`??!=?<J??@)jP4`??1=?<J??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???????!0?sk?J@)?? ???u?1ۍ??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??};???!?%ZV,>@)???QIm?1f
,;޷
@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorG????i?!}??\ȟ@)G????i?1}??\ȟ@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?????X@Q???X??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????@@????@@!????@@      ??!       "	F?N????F?N????!F?N????*      ??!       2	????????????!??????:	??G7????G7??!??G7??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?????X@y???X???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitshF??!??!hF??!??"-
IteratorGetNext/_2_Recv'??????!ڄh3??"=
sequential_187/dense_561/MatMulMatMulh ??Χ?!&:%G-??0"K
-gradient_tape/sequential_187/dense_561/MatMulMatMul6???=ȟ?!Ia??)??0"=
 sequential_187/dense_563/SoftmaxSoftmax????K???!$?i?_??"=
sequential_187/dense_562/MatMulMatMul?h.?.???!?q??r???0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?6G?ท?!??? =??"K
-gradient_tape/sequential_187/dense_562/MatMulMatMul( 窗?!????????0"K
/gradient_tape/sequential_187/dense_563/MatMul_1MatMul'w?]????!,???%??"K
/gradient_tape/sequential_187/dense_562/MatMul_1MatMul'??FĖ?!N?,g????Q      Y@Y[ZZZZZ6@ajiiiiiS@q<)??)?F@y?e?J[???"?
both?Your program is POTENTIALLY input-bound because 94.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?45.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 