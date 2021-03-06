?	N????QB@N????QB@!N????QB@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-N????QB@??);??@@1????c???A?:␝?I??s???@*	????KwW@2U
Iterator::Model::ParallelMapV2?????N??!?1#g??@@)?????N??1?1#g??@@:Preprocessing2F
Iterator::Model?đ"??!?N???:L@)?P?%????1c:\	??6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?׻?ޫ??!;??uZ?7@)b??????10???ܞ2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??^???x?!' ??ғ@)??^???x?1' ??ғ@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate,e?X??!fҁ?,(@)?4?($?u?1??n??x@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipiƢ????!6?.W?E@)*T7?s?1mJy???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorA?vs?!*\?q??@)A?vs?1*\?q??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?J?*n??!/y7?-@)ĕ?wF[e?1"?R^)8@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?7.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI ??ڃX@Q????Z	??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??);??@@??);??@@!??);??@@      ??!       "	????c???????c???!????c???*      ??!       2	?:␝??:␝?!?:␝?:	??s???@??s???@!??s???@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q ??ڃX@y????Z	???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits{???????!{???????"=
 sequential_245/dense_737/SoftmaxSoftmax?)KLD??!?l`1z???"=
sequential_245/dense_735/MatMulMatMul??Tw{???!?K?)P??0"b
?sequential_245/dropout_245/dropout/random_uniform/RandomUniformRandomUniform?F?G?{??!?TA?????"=
sequential_245/dense_736/MatMulMatMul??mSF??!?N??h??0"K
/gradient_tape/sequential_245/dense_737/MatMul_1MatMulҒ?o?=??!???"v??"K
/gradient_tape/sequential_245/dense_736/MatMul_1MatMul??dO??!C:?f??"K
-gradient_tape/sequential_245/dense_735/MatMulMatMul?b??????!)?9??R??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamP??!B???!<lIҶ??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam9G/4?'??!v???????Q      Y@Y??(??(.@a?뺮?:U@q+)?^T@y,g?å+??"?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?7.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?80.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 