?	2t??B@2t??B@!2t??B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-2t??B@?e3??pA@1	T? ?!??A73??pʬ?I????Q??*	???x??U@2U
Iterator::Model::ParallelMapV2?D?+g??!?X??A@)?D?+g??1?X??A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???tp??!N?	Ж?5@)?Za?^C??1N?v?42@:Preprocessing2F
Iterator::Models?,&6??!4?>?{?I@)M?*?????1??JR7?0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice-?\o????!?n3K?"@)-?\o????1?n3K?"@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateÂ???!wfݍ??1@)??4)?~?1U?L??F!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???????!?e?S?H@)?0?*?t?10??d?
@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensora??+ei?!.?<??m@)a??+ei?1.?<??m@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapؚ?????!??J?ŵ4@)???խ?c?10?j???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI#??×X@Q??f? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?e3??pA@?e3??pA@!?e3??pA@      ??!       "		T? ?!??	T? ?!??!	T? ?!??*      ??!       2	73??pʬ?73??pʬ?!73??pʬ?:	????Q??????Q??!????Q??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q#??×X@y??f? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?j?L????!?j?L????"<
sequential_85/dense_255/MatMulMatMul>y?q????!g????K??0"<
sequential_85/dense_257/SoftmaxSoftmax?VX?4??!;#?T??"<
sequential_85/dense_256/MatMulMatMul?X계???!SO?0???0"<
sequential_85/dense_257/MatMulMatMul?X?Q????!q?????0"J
,gradient_tape/sequential_85/dense_256/MatMulMatMul?|???4??!%?&M???0"J
,gradient_tape/sequential_85/dense_255/MatMulMatMul+J?????!:?>/G???0"J
.gradient_tape/sequential_85/dense_257/MatMul_1MatMulJ,G?G???!?8?;???"J
.gradient_tape/sequential_85/dense_256/MatMul_1MatMul?2c??V??!+l?Х???"J
,gradient_tape/sequential_85/dense_257/MatMulMatMul%_X?d??!$/???}??0Q      Y@Y??(??(.@a?뺮?:U@qSgCT@y?W?`M"??"?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?81.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 