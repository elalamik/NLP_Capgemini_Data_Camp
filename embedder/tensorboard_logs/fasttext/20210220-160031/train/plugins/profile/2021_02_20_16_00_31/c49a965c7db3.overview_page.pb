?	T???f?A@T???f?A@!T???f?A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-T???f?A@??????@@1tѐ?(??A?L??~ޤ?I_&???]??*	ףp=
?S@2U
Iterator::Model::ParallelMapV2????L??!? 6P;@)????L??1? 6P;@:Preprocessing2F
Iterator::Modelj?????!?d?}K@)*V?????1W????:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat_]?????!Y?/?r?5@)H?'????1\[/.i82@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???N?0z?!?
??	 @)???N?0z?1?
??	 @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?|A	??!??B? p-@)1E?4~?u?1??g@|?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?[????!?;?n??F@)???k??r?1?F??U?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?]???h?!?'(Lh@)?]???h?1?'(Lh@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap`YiR
???!?eV?<42@)7ݲC??f?1?{?]??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??eSx?X@Q ??&?a??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??????@@??????@@!??????@@      ??!       "	tѐ?(??tѐ?(??!tѐ?(??*      ??!       2	?L??~ޤ??L??~ޤ?!?L??~ޤ?:	_&???]??_&???]??!_&???]??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??eSx?X@y ??&?a???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??V?????!??V?????"=
sequential_275/dense_825/MatMulMatMul?/@??>??!Qq, ??0"-
IteratorGetNext/_2_Recv5L?Ж??!?Z?&3??"=
 sequential_275/dense_827/SoftmaxSoftmax[ͨgƇ??!??P????"=
sequential_275/dense_826/MatMulMatMul?n9??|??!?~$?Q???0"K
-gradient_tape/sequential_275/dense_826/MatMulMatMul?pO?Wo??!?ueGZ??0"K
-gradient_tape/sequential_275/dense_825/MatMulMatMuli?{s?Q??!?4Q?b???0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamD6???B??!PX*??c??"K
/gradient_tape/sequential_275/dense_827/MatMul_1MatMuly?(>-??!Ᏽjd???"=
sequential_275/dense_827/MatMulMatMuly?(>-??!r?@M8)??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?S}DB#R@y???t???"?
both?Your program is POTENTIALLY input-bound because 94.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?72.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 